package com.internousdev.gap_time.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.gap_time.dto.TweetDTO;
import com.internousdev.gap_time.util.DBConnector;

public class TweetDAO {

	/*
	 * ツイート追加
	 */
	public boolean insert(int userId, String message){

		Connection connection = DBConnector.getConnection();

		String sql = "INSERT INTO tweets(user_id, message, created_at) VALUES(?,?,now())";

		boolean result = false;

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, userId);
			preparedStatement.setString(2, message);

			System.out.println(preparedStatement.toString());
			result = preparedStatement.executeUpdate() > 0;

		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			connection.close();
		}catch(SQLException e){
			e.printStackTrace();
		}

		return result;
	}

	public List<TweetDTO> select(int userId){

		Connection connection = DBConnector.getConnection();

		String sql= "SELECT t.id, t.user_id, t.message, t.like_count, t.created_at, u.name FROM tweets t LEFT JOIN users u ON t.user_id = u.id WHERE t.user_id = ?";

		List<TweetDTO> result = new ArrayList<>();

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, userId);

			System.out.println(preparedStatement.toString());
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()){
				TweetDTO dto = toDto(resultSet);
				result.add(dto);
			}

		}catch(SQLException e){
			result = null;
			e.printStackTrace();
		}

		try{
			connection.close();
		}catch (SQLException e){
			e.printStackTrace();
		}

		return result;
	}

	/*
	 * いいね+1
	 */
	public boolean like(int id) {

		Connection connection = DBConnector.getConnection();

		String sql = "UPDATE tweets SET like_count = like_count + 1 WHERE id = ?";

		boolean result = false;

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);

			System.out.println(preparedStatement.toString());
			result = preparedStatement.executeUpdate() > 0;

		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			connection.close();
		}catch(SQLException e){
			e.printStackTrace();
		}

		return result;
	}

	public TweetDTO toDto(ResultSet resultSet) throws SQLException {
		TweetDTO result = new TweetDTO();
		result.setId(resultSet.getInt("id"));
		result.setUserId(resultSet.getInt("user_id"));
		result.setMessage(resultSet.getString("message"));
		result.setUserId(resultSet.getInt("user_id"));
		result.setLikeCount(resultSet.getInt("like_count"));
		result.setCreatedAt(resultSet.getDate("created_at"));
		result.setName(resultSet.getString("name"));
		return result;
	}
}
